(declare-fun a_ack!457 () (_ BitVec 64))
(declare-fun b_ack!456 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!457) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!457)
                     ((_ to_fp 11 53) b_ack!456))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!456) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!456))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!457))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!457) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!457)
                       ((_ to_fp 11 53) b_ack!456))
               ((_ to_fp 11 53) a_ack!457))
       ((_ to_fp 11 53) b_ack!456)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!457)
                       ((_ to_fp 11 53) b_ack!456))
               ((_ to_fp 11 53) b_ack!456))
       ((_ to_fp 11 53) a_ack!457)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!457)
               ((_ to_fp 11 53) b_ack!456))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!457) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!457) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!457) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!457) ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!457) (CF_floor a_ack!457))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!457)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!457)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!457) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!457) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!457) ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_pow a_ack!457
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!457)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!457))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_pow a_ack!457
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!457)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!457))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_pow a_ack!457
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!457))))))
  (fp.eq (fp.div roundNearestTiesToEven a!2 a!1)
         (CF_pow a_ack!457
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe0000000000000)
                         ((_ to_fp 11 53) a_ack!457)))))))
(assert (let ((a!1 (fp.abs (CF_pow a_ack!457
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!457))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_pow a_ack!457
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!457)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!457))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_pow a_ack!457
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!457))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (CF_pow a_ack!457
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!457))))))
  (fp.eq a!3 a!1)))))
(assert (FPCHECK_FINVALID_SQRT a_ack!457 a_ack!457))

(check-sat)
(exit)
