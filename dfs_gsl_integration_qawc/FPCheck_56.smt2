(declare-fun limit_ack!908 () (_ BitVec 64))
(declare-fun a_ack!909 () (_ BitVec 64))
(declare-fun b_ack!904 () (_ BitVec 64))
(declare-fun epsabs_ack!906 () (_ BitVec 64))
(declare-fun epsrel_ack!907 () (_ BitVec 64))
(declare-fun c_ack!905 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!908)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!904) ((_ to_fp 11 53) a_ack!909))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!906) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!907)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!907)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!905) ((_ to_fp 11 53) a_ack!909))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!905) ((_ to_fp 11 53) b_ack!904))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!905))
                   ((_ to_fp 11 53) b_ack!904))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!909))
                 ((_ to_fp 11 53) a_ack!909))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!905))
                   ((_ to_fp 11 53) b_ack!904))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!909)))
         ((_ to_fp 11 53) a_ack!909))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!905))
                           ((_ to_fp 11 53) b_ack!904))
                   ((_ to_fp 11 53) a_ack!909))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!904)
                               ((_ to_fp 11 53) a_ack!909))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!905))
                           ((_ to_fp 11 53) b_ack!904))
                   ((_ to_fp 11 53) a_ack!909))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!904)
                                   ((_ to_fp 11 53) a_ack!909))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!909))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!909)))
  #x1f76a09e667f3bcd))

(check-sat)
(exit)
