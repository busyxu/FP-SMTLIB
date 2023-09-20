(declare-fun b_ack!1600 () (_ BitVec 64))
(declare-fun a_ack!1601 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1600) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1601 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1600) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1601)))
(assert (not (= #x00000001 a_ack!1601)))
(assert (not (= #x00000002 a_ack!1601)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1600))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1600)
                       ((_ to_fp 11 53) b_ack!1600))
               ((_ to_fp 11 53) b_ack!1600))
       ((_ to_fp 11 53) b_ack!1600)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1600))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1600)
                       ((_ to_fp 11 53) b_ack!1600))
               ((_ to_fp 11 53) b_ack!1600))
       ((_ to_fp 11 53) b_ack!1600)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1601)
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x4005bf0a8b145769))
                          ((_ to_fp 11 53) #x4005bf0a8b145769))
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1601)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1601)
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4005bf0a8b145769)))
         ((_ to_fp 11 53) #x4005bf0a8b145769))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1601)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1600)
                 ((_ to_fp 11 53) b_ack!1600))
         a!1)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1601)
                    ((_ to_fp 11 53) #x3fe0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1600) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1600) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1601)
                    ((_ to_fp 11 53) #x3fe0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1601)
               ((_ to_fp 11 53) #x3fe0000000000000))
       ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53)
                                       roundNearestTiesToEven
                                       a_ack!1601)
                                     ((_ to_fp 11 53) #x3fe0000000000000))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      ((_ fp.to_sbv 32) roundTowardZero a!1))
    #x3ff0000000000000)))

(check-sat)
(exit)
