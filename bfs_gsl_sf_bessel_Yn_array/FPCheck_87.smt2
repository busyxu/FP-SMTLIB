(declare-fun a_ack!385 () (_ BitVec 32))
(declare-fun b_ack!383 () (_ BitVec 32))
(declare-fun c_ack!384 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!385 #x00000000)))
(assert (not (bvslt b_ack!383 a_ack!385)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!384) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!385 #x00000000)))
(assert (not (= #x00000000 a_ack!385)))
(assert (= #x00000001 a_ack!385))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!384) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!384) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!384) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!384) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FINVALID_LOG
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) c_ack!384))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) c_ack!384))))

(check-sat)
(exit)
