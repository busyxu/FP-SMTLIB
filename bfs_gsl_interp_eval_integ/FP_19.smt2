(declare-fun x1_ack!383 () (_ BitVec 64))
(declare-fun x0_ack!387 () (_ BitVec 64))
(declare-fun x2_ack!384 () (_ BitVec 64))
(declare-fun b_ack!386 () (_ BitVec 64))
(declare-fun a_ack!385 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!387) ((_ to_fp 11 53) x1_ack!383)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!383) ((_ to_fp 11 53) x2_ack!384)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!383)
                       ((_ to_fp 11 53) x0_ack!387))
               ((_ to_fp 11 53) x0_ack!387))
       ((_ to_fp 11 53) x1_ack!383)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!383)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!383)
                       ((_ to_fp 11 53) x0_ack!387)))
       ((_ to_fp 11 53) x0_ack!387)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!384)
                       ((_ to_fp 11 53) x1_ack!383))
               ((_ to_fp 11 53) x1_ack!383))
       ((_ to_fp 11 53) x2_ack!384)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!384)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!384)
                       ((_ to_fp 11 53) x1_ack!383)))
       ((_ to_fp 11 53) x1_ack!383)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!383)
                    ((_ to_fp 11 53) x0_ack!387))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!384)
                    ((_ to_fp 11 53) x1_ack!383))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!385) ((_ to_fp 11 53) b_ack!386))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!385) ((_ to_fp 11 53) x0_ack!387))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!386) ((_ to_fp 11 53) x2_ack!384)))

(check-sat)
(exit)
