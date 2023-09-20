(declare-fun a_ack!62 () (_ BitVec 32))
(declare-fun b_ack!61 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!62 #x00000000)))
(assert (not (= #x00000000 a_ack!62)))
(assert (not (= #x00000001 a_ack!62)))
(assert (not (= #x00000002 a_ack!62)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!61) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!61) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!62)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
