(declare-fun x1_ack!307 () (_ BitVec 64))
(declare-fun x0_ack!312 () (_ BitVec 64))
(declare-fun x2_ack!308 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!309 () (_ BitVec 64))
(declare-fun y1_ack!310 () (_ BitVec 64))
(declare-fun y2_ack!311 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!312) ((_ to_fp 11 53) x1_ack!307)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!307) ((_ to_fp 11 53) x2_ack!308)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!307)
                       ((_ to_fp 11 53) x0_ack!312))
               ((_ to_fp 11 53) x0_ack!312))
       ((_ to_fp 11 53) x1_ack!307)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!307)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!307)
                       ((_ to_fp 11 53) x0_ack!312)))
       ((_ to_fp 11 53) x0_ack!312)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!308)
                       ((_ to_fp 11 53) x1_ack!307))
               ((_ to_fp 11 53) x1_ack!307))
       ((_ to_fp 11 53) x2_ack!308)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!308)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!308)
                       ((_ to_fp 11 53) x1_ack!307)))
       ((_ to_fp 11 53) x1_ack!307)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!307)
                    ((_ to_fp 11 53) x0_ack!312))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!308)
                    ((_ to_fp 11 53) x1_ack!307))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!311)
                           ((_ to_fp 11 53) y1_ack!310))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!308)
                                   ((_ to_fp 11 53) x1_ack!307)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!310)
                           ((_ to_fp 11 53) y0_ack!309))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!307)
                                   ((_ to_fp 11 53) x0_ack!312)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!308)
                                   ((_ to_fp 11 53) x1_ack!307))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!307)
                                   ((_ to_fp 11 53) x0_ack!312))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven a!1 a!2))
    a!3)))

(check-sat)
(exit)
