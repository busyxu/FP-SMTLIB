(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!672 () (_ BitVec 64))
(declare-fun b_ack!670 () (_ BitVec 64))
(declare-fun c_ack!671 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!672)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!672)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000))))
(assert (let ((a!1 (fp.gt (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!672)
                                    ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #xc1e0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!670)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!670)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000))))
(assert (fp.gt (CF_floor (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!670)
                         ((_ to_fp 11 53) #x3fe0000000000000)))
       ((_ to_fp 11 53) #xc1e0000000000000)))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!670)
                                     ((_ to_fp 11 53) a_ack!672))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!670)
                                   ((_ to_fp 11 53) a_ack!672))
                           a!1))))
  (fp.lt a!2 ((_ to_fp 11 53) #x3d19000000000000)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!670)
                                     ((_ to_fp 11 53) a_ack!672))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.gt a!1 ((_ to_fp 11 53) #xc1e0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!670) ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!672) ((_ to_fp 11 53) #xbfb999999999999a)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!670)
                    ((_ to_fp 11 53) a_ack!672))
            ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!671) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!670) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!672) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!672) ((_ to_fp 11 53) b_ack!670))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!670))
            ((_ to_fp 11 53) #x3d19000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!670))
            ((_ to_fp 11 53) #x3d19000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!670) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) #xbff0000000000000) ((_ to_fp 11 53) a_ack!672))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!672) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!671))
       ((_ to_fp 11 53) #x40962e42fefa39ef)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!670) ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!670)
                                  ((_ to_fp 11 53) a_ack!672)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!670)
                           ((_ to_fp 11 53) a_ack!672))
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!671))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!670)
                         ((_ to_fp 11 53) a_ack!672)))
         (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) c_ack!671))))))
(assert (let ((a!1 (fp.abs (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!671))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!670)
                           ((_ to_fp 11 53) a_ack!672))
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!671))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!671))))))
  (fp.eq a!2
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!670)
                 ((_ to_fp 11 53) a_ack!672))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!670)
                           ((_ to_fp 11 53) a_ack!672))
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!671))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!670) a!1))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!670)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!670)
                    ((_ to_fp 11 53) a_ack!672)))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) c_ack!671))
       ((_ to_fp 11 53) #xc059000000000000)))
(assert (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!670)
                       ((_ to_fp 11 53) a_ack!672)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!670)
          ((_ to_fp 11 53) a_ack!672))))

(check-sat)
(exit)
