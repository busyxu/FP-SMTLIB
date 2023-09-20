(declare-fun x1_ack!6575 () (_ BitVec 64))
(declare-fun x0_ack!6579 () (_ BitVec 64))
(declare-fun x2_ack!6576 () (_ BitVec 64))
(declare-fun b_ack!6578 () (_ BitVec 64))
(declare-fun a_ack!6577 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6579) ((_ to_fp 11 53) x1_ack!6575)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6575) ((_ to_fp 11 53) x2_ack!6576)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6575)
                       ((_ to_fp 11 53) x0_ack!6579))
               ((_ to_fp 11 53) x0_ack!6579))
       ((_ to_fp 11 53) x1_ack!6575)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6575)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6575)
                       ((_ to_fp 11 53) x0_ack!6579)))
       ((_ to_fp 11 53) x0_ack!6579)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6576)
                       ((_ to_fp 11 53) x1_ack!6575))
               ((_ to_fp 11 53) x1_ack!6575))
       ((_ to_fp 11 53) x2_ack!6576)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6576)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6576)
                       ((_ to_fp 11 53) x1_ack!6575)))
       ((_ to_fp 11 53) x1_ack!6575)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6575)
                    ((_ to_fp 11 53) x0_ack!6579))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6576)
                    ((_ to_fp 11 53) x1_ack!6575))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6577) ((_ to_fp 11 53) b_ack!6578))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6577) ((_ to_fp 11 53) x0_ack!6579))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6578) ((_ to_fp 11 53) x2_ack!6576))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6577) ((_ to_fp 11 53) b_ack!6578))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6577) ((_ to_fp 11 53) x0_ack!6579))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6577) ((_ to_fp 11 53) x1_ack!6575)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6575) ((_ to_fp 11 53) a_ack!6577))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6578) ((_ to_fp 11 53) x1_ack!6575))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6578) ((_ to_fp 11 53) x2_ack!6576))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6576)
                    ((_ to_fp 11 53) x1_ack!6575))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
