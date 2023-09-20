(declare-fun a_ack!242 () (_ BitVec 64))
(declare-fun b_ack!241 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!242) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!241) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!241) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!241) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!241)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!242)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!242) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!242) ((_ to_fp 11 53) b_ack!241))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!241)
                       ((_ to_fp 11 53) a_ack!242))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!241)
                       ((_ to_fp 11 53) a_ack!242)))
       ((_ to_fp 11 53) a_ack!242)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!242) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a_ack!242))

(check-sat)
(exit)
