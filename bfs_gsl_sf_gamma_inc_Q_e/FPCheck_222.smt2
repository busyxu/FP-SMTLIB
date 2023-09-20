(declare-fun a_ack!602 () (_ BitVec 64))
(declare-fun b_ack!601 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!602) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!601) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!601) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!602) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!601)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!602)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!602) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!601)
                       ((_ to_fp 11 53) a_ack!602))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!601)
                       ((_ to_fp 11 53) a_ack!602)))
       ((_ to_fp 11 53) a_ack!602)))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!601)
                                   ((_ to_fp 11 53) a_ack!602))
                           ((_ to_fp 11 53) a_ack!602))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!601)
                                   ((_ to_fp 11 53) a_ack!602))
                           ((_ to_fp 11 53) a_ack!602)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.geq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!601)
                                   ((_ to_fp 11 53) a_ack!602))
                           ((_ to_fp 11 53) a_ack!602))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (ite a!1 #x00000001 #xffffffff))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x5fe279a74590331c))))
  (fp.leq (fp.abs (fp.div roundNearestTiesToEven
                          a!2
                          ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
          ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.geq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!601)
                                   ((_ to_fp 11 53) a_ack!602))
                           ((_ to_fp 11 53) a_ack!602))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (ite a!1 #x00000001 #xffffffff))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x5fe279a74590331c))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    a!4
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x4000000000000000))))))))

(check-sat)
(exit)
