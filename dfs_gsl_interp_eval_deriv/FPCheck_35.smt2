(declare-fun x1_ack!271 () (_ BitVec 64))
(declare-fun x0_ack!276 () (_ BitVec 64))
(declare-fun x2_ack!272 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!273 () (_ BitVec 64))
(declare-fun y1_ack!274 () (_ BitVec 64))
(declare-fun y2_ack!275 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!276) ((_ to_fp 11 53) x1_ack!271)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!271) ((_ to_fp 11 53) x2_ack!272)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!271)
                       ((_ to_fp 11 53) x0_ack!276))
               ((_ to_fp 11 53) x0_ack!276))
       ((_ to_fp 11 53) x1_ack!271)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!271)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!271)
                       ((_ to_fp 11 53) x0_ack!276)))
       ((_ to_fp 11 53) x0_ack!276)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!272)
                       ((_ to_fp 11 53) x1_ack!271))
               ((_ to_fp 11 53) x1_ack!271))
       ((_ to_fp 11 53) x2_ack!272)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!272)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!272)
                       ((_ to_fp 11 53) x1_ack!271)))
       ((_ to_fp 11 53) x1_ack!271)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!271)
                    ((_ to_fp 11 53) x0_ack!276))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!272)
                    ((_ to_fp 11 53) x1_ack!271))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!275)
                           ((_ to_fp 11 53) y1_ack!274))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!272)
                                   ((_ to_fp 11 53) x1_ack!271)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!274)
                           ((_ to_fp 11 53) y0_ack!273))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!271)
                                   ((_ to_fp 11 53) x0_ack!276))))))
  (FPCHECK_FMUL_OVERFLOW
    #x4008000000000000
    (fp.sub roundNearestTiesToEven a!1 a!2))))

(check-sat)
(exit)
