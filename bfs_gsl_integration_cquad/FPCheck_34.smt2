(declare-fun epsabs_ack!258 () (_ BitVec 64))
(declare-fun epsrel_ack!259 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!260 () (_ BitVec 64))
(declare-fun b_ack!257 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!258)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!259)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!258) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!259)
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #xbff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!257)
                  ((_ to_fp 11 53) a_ack!260))
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
