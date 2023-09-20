(declare-fun b_ack!822 () (_ BitVec 64))
(declare-fun a_ack!823 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!822) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!822) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!823) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!823)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand a!1 #x00000001))
                  #x3ff0000000000000
                  #xbff0000000000000)))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!823)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
  (not (fp.eq (fp.div roundNearestTiesToEven
                      (fp.mul roundNearestTiesToEven a!2 a!3)
                      ((_ to_fp 11 53) #x400921fb54442d18))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!823) ((_ to_fp 11 53) #xc065200000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!823)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!823)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!823)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!823)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!823)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!823)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!823) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!823) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!823))
            ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!823) ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (FPCHECK_FMUL_UNDERFLOW #x400921fb54442d18 a_ack!823))

(check-sat)
(exit)
