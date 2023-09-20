(declare-fun b_ack!740 () (_ BitVec 64))
(declare-fun a_ack!741 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!740) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!741 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!740) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!741)))
(assert (not (= #x00000001 a_ack!741)))
(assert (not (= #x00000002 a_ack!741)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!740))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!740)
                       ((_ to_fp 11 53) b_ack!740))
               ((_ to_fp 11 53) b_ack!740))
       ((_ to_fp 11 53) b_ack!740)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!740))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!740)
                       ((_ to_fp 11 53) b_ack!740))
               ((_ to_fp 11 53) b_ack!740))
       ((_ to_fp 11 53) b_ack!740)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!741)
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
                                     a_ack!741)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!741)
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
                                     a_ack!741)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!740)
                 ((_ to_fp 11 53) b_ack!740))
         a!1)))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!741)
  #x3fe0000000000000))

(check-sat)
(exit)
