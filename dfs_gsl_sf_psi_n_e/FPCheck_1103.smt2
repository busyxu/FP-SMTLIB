(declare-fun a_ack!2949 () (_ BitVec 32))
(declare-fun b_ack!2948 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (= #x00000000 a_ack!2949)))
(assert (not (= #x00000001 a_ack!2949)))
(assert (not (bvslt a_ack!2949 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2948) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2949)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2948) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2949)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_log b_ack!2948))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc0861b2bdd7abcd2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2949)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_log b_ack!2948))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2949)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x404b000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2948) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2949)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x403b000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2948) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2949)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x403b000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2948) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) b_ack!2948))
               ((_ to_fp 11 53) #x4024000000000000))
       ((_ to_fp 11 53) b_ack!2948)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) b_ack!2948))
               ((_ to_fp 11 53) b_ack!2948))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2948))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2949)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0000000000000))
                 a!1)
         ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2948))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2949)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0000000000000))
                 ((_ to_fp 11 53) #x3fe0000000000000))
         a!1)))
(assert (FPCHECK_FADD_ACCURACY #x401c000000000000 b_ack!2948))

(check-sat)
(exit)
