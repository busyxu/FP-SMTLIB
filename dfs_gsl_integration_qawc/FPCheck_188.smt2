(declare-fun limit_ack!2936 () (_ BitVec 64))
(declare-fun a_ack!2937 () (_ BitVec 64))
(declare-fun b_ack!2932 () (_ BitVec 64))
(declare-fun epsabs_ack!2934 () (_ BitVec 64))
(declare-fun epsrel_ack!2935 () (_ BitVec 64))
(declare-fun c_ack!2933 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2936)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2932) ((_ to_fp 11 53) a_ack!2937))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2934) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2935)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2935)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2933) ((_ to_fp 11 53) a_ack!2937))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2933) ((_ to_fp 11 53) b_ack!2932))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2933))
                   ((_ to_fp 11 53) b_ack!2932))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!2937))
                 ((_ to_fp 11 53) a_ack!2937))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2933))
                   ((_ to_fp 11 53) b_ack!2932))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!2937)))
         ((_ to_fp 11 53) a_ack!2937))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2933))
                           ((_ to_fp 11 53) b_ack!2932))
                   ((_ to_fp 11 53) a_ack!2937))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!2932)
                               ((_ to_fp 11 53) a_ack!2937))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2933))
                           ((_ to_fp 11 53) b_ack!2932))
                   ((_ to_fp 11 53) a_ack!2937))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2932)
                                   ((_ to_fp 11 53) a_ack!2937))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!2937))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2932)
                                   ((_ to_fp 11 53) a_ack!2937)))
                   ((_ to_fp 11 53) #x3fe6a09e667f3bcc))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2932)
                    ((_ to_fp 11 53) a_ack!2937)))
    a!1)))

(check-sat)
(exit)
