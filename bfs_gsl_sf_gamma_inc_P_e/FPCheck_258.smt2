(declare-fun a_ack!692 () (_ BitVec 64))
(declare-fun b_ack!691 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!691) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!691) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!691) ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!691)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!692)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!691)
                                   ((_ to_fp 11 53) a_ack!692))
                           ((_ to_fp 11 53) a_ack!692))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!691)
                                   ((_ to_fp 11 53) a_ack!692))
                           ((_ to_fp 11 53) a_ack!692)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!691)
                                   ((_ to_fp 11 53) a_ack!692))
                           ((_ to_fp 11 53) a_ack!692)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!692) ((_ to_fp 11 53) #x4330000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!692))
  #x3ff0000000000000))

(check-sat)
(exit)
