(declare-fun a_ack!1025 () (_ BitVec 32))
(declare-fun b_ack!1023 () (_ BitVec 32))
(declare-fun c_ack!1024 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!1025 #x00000000)))
(assert (not (bvslt b_ack!1023 a_ack!1025)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1024) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!1023))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1024) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1024) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1024) ((_ to_fp 11 53) #x4020000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4030000000000000)
          ((_ to_fp 11 53) c_ack!1024))
  #x3ff0000000000000))

(check-sat)
(exit)
