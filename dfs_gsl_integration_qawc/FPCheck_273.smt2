(declare-fun limit_ack!4196 () (_ BitVec 64))
(declare-fun a_ack!4197 () (_ BitVec 64))
(declare-fun b_ack!4192 () (_ BitVec 64))
(declare-fun epsabs_ack!4194 () (_ BitVec 64))
(declare-fun epsrel_ack!4195 () (_ BitVec 64))
(declare-fun c_ack!4193 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4196)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4192) ((_ to_fp 11 53) a_ack!4197))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4194) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4195)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4195)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4193) ((_ to_fp 11 53) a_ack!4197))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4193) ((_ to_fp 11 53) b_ack!4192))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4193))
                   ((_ to_fp 11 53) b_ack!4192))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4197))
                 ((_ to_fp 11 53) a_ack!4197))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4193))
                   ((_ to_fp 11 53) b_ack!4192))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4197)))
         ((_ to_fp 11 53) a_ack!4197))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4193))
                           ((_ to_fp 11 53) b_ack!4192))
                   ((_ to_fp 11 53) a_ack!4197))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!4192)
                               ((_ to_fp 11 53) a_ack!4197))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4193))
                           ((_ to_fp 11 53) b_ack!4192))
                   ((_ to_fp 11 53) a_ack!4197))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4192)
                                   ((_ to_fp 11 53) a_ack!4197))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!4197))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4192)
                                   ((_ to_fp 11 53) a_ack!4197)))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcc))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4192)
                                   ((_ to_fp 11 53) a_ack!4197)))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x1fb54e447be70b94))))
(let ((a!4 (fp.eq (fp.mul roundNearestTiesToEven
                          a!3
                          ((_ to_fp 11 53) #x1fb54e447be70b94))
                  (CF_log (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!2)))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4192)
                                   ((_ to_fp 11 53) a_ack!4197)))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcc))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4192)
                                   ((_ to_fp 11 53) a_ack!4197)))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x1fb54e447be70b94))))
  (not (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4192)
                                   ((_ to_fp 11 53) a_ack!4197)))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcc))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4192)
                                   ((_ to_fp 11 53) a_ack!4197)))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x1fb54e447be70b94))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   a!3)))
  (fp.eq a!4 ((_ to_fp 11 53) #x1fb54e447be70b94)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4192)
                                   ((_ to_fp 11 53) a_ack!4197)))
                   ((_ to_fp 11 53) #x3fd87de2a6aea963))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!4192)
                    ((_ to_fp 11 53) a_ack!4197)))
    a!1)))

(check-sat)
(exit)
