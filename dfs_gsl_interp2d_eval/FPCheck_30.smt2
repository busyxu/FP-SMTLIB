(declare-fun x1_ack!287 () (_ BitVec 64))
(declare-fun x0_ack!291 () (_ BitVec 64))
(declare-fun y0_ack!288 () (_ BitVec 64))
(declare-fun x_ack!289 () (_ BitVec 64))
(declare-fun y_ack!290 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!291) ((_ to_fp 11 53) x1_ack!287))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!288) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!289) ((_ to_fp 11 53) x0_ack!291))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!289) ((_ to_fp 11 53) x1_ack!287))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!290) ((_ to_fp 11 53) y0_ack!288))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!290) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!289) ((_ to_fp 11 53) x0_ack!291))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!289) ((_ to_fp 11 53) x1_ack!287))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!290) ((_ to_fp 11 53) y0_ack!288))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!290) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!287)
                       ((_ to_fp 11 53) x0_ack!291))
               ((_ to_fp 11 53) x0_ack!291))
       ((_ to_fp 11 53) x1_ack!287)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!287)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!287)
                       ((_ to_fp 11 53) x0_ack!291)))
       ((_ to_fp 11 53) x0_ack!291)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!288))
               ((_ to_fp 11 53) y0_ack!288))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!288)))
       ((_ to_fp 11 53) y0_ack!288)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!289)
                                   ((_ to_fp 11 53) x0_ack!291))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!287)
                                   ((_ to_fp 11 53) x0_ack!291)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!290)
                                   ((_ to_fp 11 53) y0_ack!288))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!288))))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
