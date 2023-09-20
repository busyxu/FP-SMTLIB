(declare-fun b_ack!169 () (_ BitVec 64))
(declare-fun a_ack!170 () (_ BitVec 32))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!169) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!170 #x00000000)))
(assert (not (= #x00000000 a_ack!170)))
(assert (not (= #x00000001 a_ack!170)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!169) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!169)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!170)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!169)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!170)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 a!2))
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!169)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!170)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         (fp.sub roundNearestTiesToEven a!1 a!2)
                         ((_ to_fp 11 53) #x3fed67f1c864beb4))
                 (fp.sub roundNearestTiesToEven a!1 a!2))
         ((_ to_fp 11 53) #x3fed67f1c864beb4))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!169)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!170)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         (fp.sub roundNearestTiesToEven a!1 a!2)
                         ((_ to_fp 11 53) #x3fed67f1c864beb4))
                 ((_ to_fp 11 53) #x3fed67f1c864beb4))
         (fp.sub roundNearestTiesToEven a!1 a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!169)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!170)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      (fp.sub roundNearestTiesToEven a!1 a!2)
                      ((_ to_fp 11 53) #x3fed67f1c864beb4))
              ((_ to_fp 11 53) #xc0861b2bdd7abcd2)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           (fp.add roundNearestTiesToEven
                                   (CF_log b_ack!169)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!170)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!170)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      (fp.sub roundNearestTiesToEven a!1 a!2)
                      ((_ to_fp 11 53) #x3fed67f1c864beb4))
              ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (bvsle #x00000001 a_ack!170))
(assert (bvsle #x00000002 a_ack!170))
(assert (bvsle #x00000003 a_ack!170))
(assert (bvsle #x00000004 a_ack!170))
(assert (FPCHECK_FDIV_UNDERFLOW b_ack!169 #x4010000000000000))

(check-sat)
(exit)
