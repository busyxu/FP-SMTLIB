(declare-fun x_ack!598 () (_ BitVec 64))
(declare-fun nu1_ack!596 () (_ BitVec 64))
(declare-fun nu2_ack!597 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!598) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!598) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!596) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!597) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!598) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!598) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!598) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!596)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!597)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!598) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!598) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!598) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!598) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!596)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!597)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!596)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!597)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!596)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!597)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4010d666dada6aa8))
                 a!1)
         ((_ to_fp 11 53) #x4010d666dada6aa8))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!596)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!597)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4010d666dada6aa8))
                 ((_ to_fp 11 53) #x4010d666dada6aa8))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!596)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!597)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4006d3b8e31068e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff003ab59d1c825))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010d666dada6aa8))))))
  (FPCHECK_FDIV_ZERO
    a!2
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x4004f368a0a50351))
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x4025b71ff2054d90)))))))

(check-sat)
(exit)
