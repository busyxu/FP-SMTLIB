(declare-fun c_ack!4659 () (_ BitVec 64))
(declare-fun a_ack!4660 () (_ BitVec 32))
(declare-fun b_ack!4658 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4659) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!4660 #xffffffff)))
(assert (= #xffffffff a_ack!4660))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4659) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4658) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4659) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4658) ((_ to_fp 11 53) #x408f400000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4659) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4658) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4659) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4658) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4659) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4658) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4659) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4658) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff8000000000000) ((_ to_fp 11 53) c_ack!4659))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4659) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_acos c_ack!4659)
                                  ((_ to_fp 11 53) b_ack!4658)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!4659)
                                   ((_ to_fp 11 53) b_ack!4658)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!4659)
                                   ((_ to_fp 11 53) b_ack!4658)))
                   ((_ to_fp 11 53) #x4020000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!4659)
                                   ((_ to_fp 11 53) b_ack!4658))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c814b37f4b51f71))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!4)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbcb3749ef34bc35f))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           a!4)
                   ((_ to_fp 11 53) #xbcb87fe49aab41e0))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!6)
                           a!5)
                   ((_ to_fp 11 53) #x3cdfb49140a1644f))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!7)
                                   a!6)
                           ((_ to_fp 11 53) #x3cf13428ff6ed89c)))))
  (FPCHECK_FSUB_UNDERFLOW a!8 a!7))))))))))

(check-sat)
(exit)
