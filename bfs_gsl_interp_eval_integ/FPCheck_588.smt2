(declare-fun x1_ack!7377 () (_ BitVec 64))
(declare-fun x0_ack!7381 () (_ BitVec 64))
(declare-fun x2_ack!7378 () (_ BitVec 64))
(declare-fun b_ack!7380 () (_ BitVec 64))
(declare-fun a_ack!7379 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7381) ((_ to_fp 11 53) x1_ack!7377)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7377) ((_ to_fp 11 53) x2_ack!7378)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7377)
                       ((_ to_fp 11 53) x0_ack!7381))
               ((_ to_fp 11 53) x0_ack!7381))
       ((_ to_fp 11 53) x1_ack!7377)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7377)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7377)
                       ((_ to_fp 11 53) x0_ack!7381)))
       ((_ to_fp 11 53) x0_ack!7381)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7378)
                       ((_ to_fp 11 53) x1_ack!7377))
               ((_ to_fp 11 53) x1_ack!7377))
       ((_ to_fp 11 53) x2_ack!7378)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7378)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7378)
                       ((_ to_fp 11 53) x1_ack!7377)))
       ((_ to_fp 11 53) x1_ack!7377)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7377)
                    ((_ to_fp 11 53) x0_ack!7381))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7378)
                    ((_ to_fp 11 53) x1_ack!7377))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7379) ((_ to_fp 11 53) b_ack!7380))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7379) ((_ to_fp 11 53) x0_ack!7381))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7380) ((_ to_fp 11 53) x2_ack!7378))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7379) ((_ to_fp 11 53) b_ack!7380))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7379) ((_ to_fp 11 53) x0_ack!7381))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7379) ((_ to_fp 11 53) x1_ack!7377))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7380) ((_ to_fp 11 53) x0_ack!7381))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7380) ((_ to_fp 11 53) x1_ack!7377)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7377) ((_ to_fp 11 53) b_ack!7380))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7377)
                    ((_ to_fp 11 53) x0_ack!7381))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7378)
                    ((_ to_fp 11 53) x1_ack!7377))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7377)
                                   ((_ to_fp 11 53) x1_ack!7377))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7377)
                                   ((_ to_fp 11 53) x1_ack!7377)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7380)
                                   ((_ to_fp 11 53) x1_ack!7377))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7380)
                                   ((_ to_fp 11 53) x1_ack!7377))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7377)
                    ((_ to_fp 11 53) x1_ack!7377))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!7380)
                    ((_ to_fp 11 53) x1_ack!7377))))))

(check-sat)
(exit)
