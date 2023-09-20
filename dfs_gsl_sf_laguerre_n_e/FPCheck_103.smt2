(declare-fun a_ack!354 () (_ BitVec 32))
(declare-fun c_ack!353 () (_ BitVec 64))
(declare-fun b_ack!352 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!354 #x00000000)))
(assert (not (= #x00000000 a_ack!354)))
(assert (not (= #x00000001 a_ack!354)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!354 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!354)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!352) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!352) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!354))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!352)))
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) b_ack!352))
          ((_ to_fp 11 53) c_ack!353))))

(check-sat)
(exit)
