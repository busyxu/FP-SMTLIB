(declare-fun limit_ack!1136 () (_ BitVec 64))
(declare-fun a_ack!1137 () (_ BitVec 64))
(declare-fun b_ack!1132 () (_ BitVec 64))
(declare-fun epsabs_ack!1134 () (_ BitVec 64))
(declare-fun epsrel_ack!1135 () (_ BitVec 64))
(declare-fun c_ack!1133 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1136)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1132) ((_ to_fp 11 53) a_ack!1137))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1134) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1135)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1135)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1133) ((_ to_fp 11 53) a_ack!1137))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1133) ((_ to_fp 11 53) b_ack!1132))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1133))
                   ((_ to_fp 11 53) b_ack!1132))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!1137))
                 ((_ to_fp 11 53) a_ack!1137))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1133))
                   ((_ to_fp 11 53) b_ack!1132))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!1137)))
         ((_ to_fp 11 53) a_ack!1137))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1133))
                           ((_ to_fp 11 53) b_ack!1132))
                   ((_ to_fp 11 53) a_ack!1137))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!1132)
                               ((_ to_fp 11 53) a_ack!1137))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1133))
                           ((_ to_fp 11 53) b_ack!1132))
                   ((_ to_fp 11 53) a_ack!1137))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1132)
                                   ((_ to_fp 11 53) a_ack!1137))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!1137))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1132)
                                   ((_ to_fp 11 53) a_ack!1137)))
                   ((_ to_fp 11 53) #x3fefb9ea92ec689b))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1132)
                                   ((_ to_fp 11 53) a_ack!1137)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x1fcbb9b63cc510ba))))

(check-sat)
(exit)
