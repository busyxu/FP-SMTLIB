(declare-fun a_ack!46 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (= #x00000000 a_ack!46)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    a_ack!46)
                                  ((_ to_fp 11 53) #x3fd0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!46)
                                   ((_ to_fp 11 53) #x3fd0000000000000))
                           ((_ to_fp 11 53) #x400921fb54442d18))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             a_ack!46)
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x400921fb54442d18))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!46)
                                   ((_ to_fp 11 53) #x3fd0000000000000))
                           ((_ to_fp 11 53) #x400921fb54442d18))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
  (fp.eq a!1
         (fp.add roundNearestTiesToEven
                 ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!46)
                 ((_ to_fp 11 53) #x3fd0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             a_ack!46)
                           ((_ to_fp 11 53) #x3fd0000000000000))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   ((_ to_fp 11 53) #xbfd7382ff85f1247))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fbeceafa1d45fa5)
                         a!2)
                 ((_ to_fp 11 53) #x3fbeceafa1d45fa5))
         a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             a_ack!46)
                           ((_ to_fp 11 53) #x3fd0000000000000))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   ((_ to_fp 11 53) #xbfd7382ff85f1247))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fbeceafa1d45fa5)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3fbeceafa1d45fa5)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             a_ack!46)
                           ((_ to_fp 11 53) #x3fd0000000000000))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fbeceafa1d45fa5)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #xbfd7382ff85f1247)))))
  (FPCHECK_FADD_ACCURACY
    #x3fa68004c5935acc
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven a!1 a!1))
            a!2)))))

(check-sat)
(exit)
