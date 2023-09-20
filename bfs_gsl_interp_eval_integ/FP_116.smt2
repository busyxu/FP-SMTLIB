(declare-fun x1_ack!6652 () (_ BitVec 64))
(declare-fun x0_ack!6656 () (_ BitVec 64))
(declare-fun x2_ack!6653 () (_ BitVec 64))
(declare-fun b_ack!6655 () (_ BitVec 64))
(declare-fun a_ack!6654 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6656) ((_ to_fp 11 53) x1_ack!6652)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6652) ((_ to_fp 11 53) x2_ack!6653)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6652)
                       ((_ to_fp 11 53) x0_ack!6656))
               ((_ to_fp 11 53) x0_ack!6656))
       ((_ to_fp 11 53) x1_ack!6652)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6652)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6652)
                       ((_ to_fp 11 53) x0_ack!6656)))
       ((_ to_fp 11 53) x0_ack!6656)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6653)
                       ((_ to_fp 11 53) x1_ack!6652))
               ((_ to_fp 11 53) x1_ack!6652))
       ((_ to_fp 11 53) x2_ack!6653)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6653)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6653)
                       ((_ to_fp 11 53) x1_ack!6652)))
       ((_ to_fp 11 53) x1_ack!6652)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6652)
                    ((_ to_fp 11 53) x0_ack!6656))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6653)
                    ((_ to_fp 11 53) x1_ack!6652))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6654) ((_ to_fp 11 53) b_ack!6655))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6654) ((_ to_fp 11 53) x0_ack!6656))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6655) ((_ to_fp 11 53) x2_ack!6653))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6654) ((_ to_fp 11 53) b_ack!6655))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6654) ((_ to_fp 11 53) x0_ack!6656))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6654) ((_ to_fp 11 53) x1_ack!6652))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6655) ((_ to_fp 11 53) x0_ack!6656))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6655) ((_ to_fp 11 53) x1_ack!6652)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6652) ((_ to_fp 11 53) b_ack!6655))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6652)
                    ((_ to_fp 11 53) x0_ack!6656))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6653)
                    ((_ to_fp 11 53) x1_ack!6652))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
