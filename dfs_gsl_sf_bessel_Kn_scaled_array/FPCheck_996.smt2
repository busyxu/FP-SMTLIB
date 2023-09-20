(declare-fun a_ack!4109 () (_ BitVec 32))
(declare-fun b_ack!4107 () (_ BitVec 32))
(declare-fun c_ack!4108 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!4109 #x00000000)))
(assert (not (bvslt b_ack!4107 a_ack!4109)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!4107)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4108) ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!4108))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #xbff0000000000000))
    #x3ff0000000000000)))

(check-sat)
(exit)
