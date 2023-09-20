(declare-fun c_ack!4798 () (_ BitVec 64))
(declare-fun a_ack!4799 () (_ BitVec 32))
(declare-fun b_ack!4797 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4798) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!4799 #xffffffff)))
(assert (not (= #xffffffff a_ack!4799)))
(assert (= #x00000000 a_ack!4799))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4798) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4798) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4797) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4798) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4798) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4797) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4798) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4797) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4798) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4797) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4798) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4797) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) #x3ff8000000000000) ((_ to_fp 11 53) c_ack!4798))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4798) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4798))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4798)
                       ((_ to_fp 11 53) c_ack!4798))
               ((_ to_fp 11 53) c_ack!4798))
       ((_ to_fp 11 53) c_ack!4798)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4798))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4798)
                       ((_ to_fp 11 53) c_ack!4798))
               ((_ to_fp 11 53) c_ack!4798))
       ((_ to_fp 11 53) c_ack!4798)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4798)
                                   ((_ to_fp 11 53) c_ack!4798)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4798)
                           ((_ to_fp 11 53) c_ack!4798)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4798)
                                   ((_ to_fp 11 53) c_ack!4798))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!4798)
                 ((_ to_fp 11 53) c_ack!4798)))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_acos c_ack!4798)
                                  ((_ to_fp 11 53) b_ack!4797)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!4798)
                                   ((_ to_fp 11 53) b_ack!4797)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!4798)
                                   ((_ to_fp 11 53) b_ack!4797)))
                   ((_ to_fp 11 53) #x4020000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!4798)
                                   ((_ to_fp 11 53) b_ack!4797))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!4798)
                                   ((_ to_fp 11 53) b_ack!4797))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!4798)
                                   ((_ to_fp 11 53) b_ack!4797))))))
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
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_UNDERFLOW a!4 #x3c814b37f4b51f71))))))

(check-sat)
(exit)
