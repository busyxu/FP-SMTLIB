(declare-fun b_ack!130 () (_ BitVec 64))
(declare-fun a_ack!131 () (_ BitVec 32))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!131 #x00000000)))
(assert (not (= #x00000000 a_ack!131)))
(assert (not (= #x00000001 a_ack!131)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!130)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!131)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!130)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!131)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 a!2))
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!130)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!131)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         (fp.sub roundNearestTiesToEven a!1 a!2)
                         ((_ to_fp 11 53) #x3fed67f1c864beb4))
                 (fp.sub roundNearestTiesToEven a!1 a!2))
         ((_ to_fp 11 53) #x3fed67f1c864beb4))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!130)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!131)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         (fp.sub roundNearestTiesToEven a!1 a!2)
                         ((_ to_fp 11 53) #x3fed67f1c864beb4))
                 ((_ to_fp 11 53) #x3fed67f1c864beb4))
         (fp.sub roundNearestTiesToEven a!1 a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!130)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!131)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      (fp.sub roundNearestTiesToEven a!1 a!2)
                      ((_ to_fp 11 53) #x3fed67f1c864beb4))
              ((_ to_fp 11 53) #xc0861b2bdd7abcd2)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!130)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!131)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!131)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      (fp.sub roundNearestTiesToEven a!1 a!2)
                      ((_ to_fp 11 53) #x3fed67f1c864beb4))
              ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (bvsle #x00000001 a_ack!131))
(assert (bvsle #x00000002 a_ack!131))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!130)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!130)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
