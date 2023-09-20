(declare-fun p0_ack!286 () (_ BitVec 64))
(declare-fun x0_ack!284 () (_ BitVec 64))
(declare-fun p2_ack!283 () (_ BitVec 64))
(declare-fun p1_ack!282 () (_ BitVec 64))
(declare-fun x1_ack!285 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!283))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!284)
                                  ((_ to_fp 11 53) p0_ack!286)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!283))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!284)
                                   ((_ to_fp 11 53) p0_ack!286))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!285)
                                  ((_ to_fp 11 53) p1_ack!282)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!283))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!284)
                                   ((_ to_fp 11 53) p0_ack!286))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
