(declare-fun b_ack!563 () (_ BitVec 64))
(declare-fun a_ack!564 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!563) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!564) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!563)
                          ((_ to_fp 11 53) b_ack!563))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!564)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!564)
                                   ((_ to_fp 11 53) a_ack!564))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) b_ack!563))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3ed965fea53d6e41))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x401921fb54442d18)
                       ((_ to_fp 11 53) a_ack!564))
               ((_ to_fp 11 53) #x401921fb54442d18))
       ((_ to_fp 11 53) a_ack!564)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!564))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x401921fb54442d18)
                       ((_ to_fp 11 53) a_ack!564))
               ((_ to_fp 11 53) a_ack!564))
       ((_ to_fp 11 53) #x401921fb54442d18)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!563)
               ((_ to_fp 11 53) a_ack!564))
       ((_ to_fp 11 53) #x410428a2f98d7287)))
(assert (let ((a!1 (CF_log (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) a_ack!564))
                           ((_ to_fp 11 53) #x400035d3425729ea)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) a_ack!564)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff06ba684ae53d4)
                           a!1))))
  (FPCHECK_FMUL_UNDERFLOW a_ack!564 a!2))))

(check-sat)
(exit)
