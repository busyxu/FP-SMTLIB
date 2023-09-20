(declare-fun b_ack!19 () (_ BitVec 64))
(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!19))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!19)
                       ((_ to_fp 11 53) b_ack!19))
               ((_ to_fp 11 53) b_ack!19))
       ((_ to_fp 11 53) b_ack!19)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!19))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!19)
                       ((_ to_fp 11 53) b_ack!19))
               ((_ to_fp 11 53) b_ack!19))
       ((_ to_fp 11 53) b_ack!19)))
(assert (FPCHECK_FADD_ACCURACY a_ack!20 #x3ff0000000000000))

(check-sat)
(exit)
