(declare-fun a_ack!114 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!114) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!114) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!114) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!114) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!114) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (CF_log a_ack!114))
            ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (CF_log a_ack!114))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) a_ack!114))
               ((_ to_fp 11 53) #x4024000000000000))
       ((_ to_fp 11 53) a_ack!114)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) a_ack!114))
               ((_ to_fp 11 53) a_ack!114))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4024000000000000)
                                  ((_ to_fp 11 53) a_ack!114)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) a_ack!114))
                           #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) a_ack!114)))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4024000000000000)
                                  ((_ to_fp 11 53) a_ack!114)))
                  (CF_pow (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4024000000000000)
                                  ((_ to_fp 11 53) a_ack!114))
                          #xc000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) a_ack!114))
                           #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) a_ack!114)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) a_ack!114))
                           #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) a_ack!114)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) a_ack!114))
                           #xc000000000000000)
                   a!1)))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4024000000000000)
                 ((_ to_fp 11 53) a_ack!114))))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4024000000000000)
                  ((_ to_fp 11 53) a_ack!114))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3fe0000000000000))

(check-sat)
(exit)
