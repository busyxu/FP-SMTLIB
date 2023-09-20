(declare-fun b_ack!498 () (_ BitVec 64))
(declare-fun a_ack!499 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!498) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!498) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!499 #x00000000)))
(assert (not (= #x00000000 a_ack!499)))
(assert (not (= #x00000001 a_ack!499)))
(assert (not (bvslt #x000186a0 a_ack!499)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!498) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!499)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
