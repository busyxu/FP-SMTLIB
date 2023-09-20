(declare-fun b_ack!591 () (_ BitVec 32))
(declare-fun a_ack!593 () (_ BitVec 32))
(declare-fun c_ack!592 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!591 #x00000000)))
(assert (not (bvslt a_ack!593 b_ack!591)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!592) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!592) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!591))
(assert (not (bvslt a_ack!593 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!592) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!592) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!593)))
(assert (not (= #x00000001 a_ack!593)))
(assert (not (= #x00000002 a_ack!593)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!592) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!592) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!593 #x000186a0))
(assert (bvsle #x00000002 a_ack!593))
(assert (bvsle #x00000003 a_ack!593))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!592))
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!592))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!592))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!592))
                           ((_ to_fp 11 53) #x4014000000000000))
                   a!2)))
  (FPCHECK_FADD_OVERFLOW a!3 a!4)))))

(check-sat)
(exit)
