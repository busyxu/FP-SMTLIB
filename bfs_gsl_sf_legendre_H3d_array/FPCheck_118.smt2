(declare-fun c_ack!679 () (_ BitVec 64))
(declare-fun a_ack!680 () (_ BitVec 32))
(declare-fun b_ack!678 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!679) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!680 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!679) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!680)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!679) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!679) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!680)))
(assert (= #x00000001 a_ack!680))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!679) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!679) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!678) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!679)
                                  ((_ to_fp 11 53) b_ack!678)))
                  ((_ to_fp 11 53) #x3f48406003b2ae5a))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!679)
                                  ((_ to_fp 11 53) b_ack!678)))
                  ((_ to_fp 11 53) #x3f48406003b2ae5a))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!679)
                                   ((_ to_fp 11 53) b_ack!678))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f20000000000000)))))
(assert (let ((a!1 (fp.abs (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!679)
                                   ((_ to_fp 11 53) b_ack!678))))))
  (FPCHECK_FSUB_UNDERFLOW
    (CF_floor (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3fe921fb54442d18)))
    #x7ff8000000000001)))

(check-sat)
(exit)
