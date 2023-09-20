(declare-fun x1_ack!3000 () (_ BitVec 64))
(declare-fun x0_ack!3005 () (_ BitVec 64))
(declare-fun y0_ack!3001 () (_ BitVec 64))
(declare-fun x_ack!3003 () (_ BitVec 64))
(declare-fun y_ack!3004 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z1_ack!3002 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3005) ((_ to_fp 11 53) x1_ack!3000))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3001) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3003) ((_ to_fp 11 53) x0_ack!3005))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3003) ((_ to_fp 11 53) x1_ack!3000))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3004) ((_ to_fp 11 53) y0_ack!3001))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3004) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3000)
                       ((_ to_fp 11 53) x0_ack!3005))
               ((_ to_fp 11 53) x0_ack!3005))
       ((_ to_fp 11 53) x1_ack!3000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3000)
                       ((_ to_fp 11 53) x0_ack!3005)))
       ((_ to_fp 11 53) x0_ack!3005)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3001))
               ((_ to_fp 11 53) y0_ack!3001))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3001)))
       ((_ to_fp 11 53) y0_ack!3001)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3003)
                                   ((_ to_fp 11 53) x0_ack!3005))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3000)
                                   ((_ to_fp 11 53) x0_ack!3005))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3004)
                                   ((_ to_fp 11 53) y0_ack!3001))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3001))))))
  (FPCHECK_FMUL_UNDERFLOW a!2 z1_ack!3002))))

(check-sat)
(exit)
