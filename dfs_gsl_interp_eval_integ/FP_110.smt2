(declare-fun x1_ack!6610 () (_ BitVec 64))
(declare-fun x0_ack!6614 () (_ BitVec 64))
(declare-fun x2_ack!6611 () (_ BitVec 64))
(declare-fun b_ack!6613 () (_ BitVec 64))
(declare-fun a_ack!6612 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6614) ((_ to_fp 11 53) x1_ack!6610)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6610) ((_ to_fp 11 53) x2_ack!6611)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6610)
                       ((_ to_fp 11 53) x0_ack!6614))
               ((_ to_fp 11 53) x0_ack!6614))
       ((_ to_fp 11 53) x1_ack!6610)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6610)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6610)
                       ((_ to_fp 11 53) x0_ack!6614)))
       ((_ to_fp 11 53) x0_ack!6614)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6611)
                       ((_ to_fp 11 53) x1_ack!6610))
               ((_ to_fp 11 53) x1_ack!6610))
       ((_ to_fp 11 53) x2_ack!6611)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6611)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6611)
                       ((_ to_fp 11 53) x1_ack!6610)))
       ((_ to_fp 11 53) x1_ack!6610)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6610)
                    ((_ to_fp 11 53) x0_ack!6614))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6611)
                    ((_ to_fp 11 53) x1_ack!6610))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6612) ((_ to_fp 11 53) b_ack!6613))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6612) ((_ to_fp 11 53) x0_ack!6614))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6613) ((_ to_fp 11 53) x2_ack!6611))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6612) ((_ to_fp 11 53) b_ack!6613))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6612) ((_ to_fp 11 53) x0_ack!6614))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6612) ((_ to_fp 11 53) x1_ack!6610)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6610) ((_ to_fp 11 53) a_ack!6612))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6613) ((_ to_fp 11 53) x1_ack!6610))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6613) ((_ to_fp 11 53) x2_ack!6611))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6611)
                    ((_ to_fp 11 53) x1_ack!6610))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
