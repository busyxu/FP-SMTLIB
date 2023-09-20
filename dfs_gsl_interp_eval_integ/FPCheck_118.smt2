(declare-fun x1_ack!1286 () (_ BitVec 64))
(declare-fun x0_ack!1293 () (_ BitVec 64))
(declare-fun x2_ack!1287 () (_ BitVec 64))
(declare-fun b_ack!1292 () (_ BitVec 64))
(declare-fun a_ack!1291 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1288 () (_ BitVec 64))
(declare-fun y1_ack!1289 () (_ BitVec 64))
(declare-fun y2_ack!1290 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1293) ((_ to_fp 11 53) x1_ack!1286)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1286) ((_ to_fp 11 53) x2_ack!1287)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1286)
                       ((_ to_fp 11 53) x0_ack!1293))
               ((_ to_fp 11 53) x0_ack!1293))
       ((_ to_fp 11 53) x1_ack!1286)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1286)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1286)
                       ((_ to_fp 11 53) x0_ack!1293)))
       ((_ to_fp 11 53) x0_ack!1293)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1287)
                       ((_ to_fp 11 53) x1_ack!1286))
               ((_ to_fp 11 53) x1_ack!1286))
       ((_ to_fp 11 53) x2_ack!1287)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1287)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1287)
                       ((_ to_fp 11 53) x1_ack!1286)))
       ((_ to_fp 11 53) x1_ack!1286)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1286)
                    ((_ to_fp 11 53) x0_ack!1293))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1287)
                    ((_ to_fp 11 53) x1_ack!1286))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1291) ((_ to_fp 11 53) b_ack!1292))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1291) ((_ to_fp 11 53) x0_ack!1293))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1292) ((_ to_fp 11 53) x2_ack!1287))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1291) ((_ to_fp 11 53) b_ack!1292))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1291) ((_ to_fp 11 53) x0_ack!1293))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1291) ((_ to_fp 11 53) x1_ack!1286))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1292) ((_ to_fp 11 53) x0_ack!1293))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1292) ((_ to_fp 11 53) x1_ack!1286)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1286) ((_ to_fp 11 53) b_ack!1292))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1286)
                    ((_ to_fp 11 53) x0_ack!1293))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1290)
                           ((_ to_fp 11 53) y1_ack!1289))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1287)
                                   ((_ to_fp 11 53) x1_ack!1286)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1289)
                           ((_ to_fp 11 53) y0_ack!1288))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1286)
                                   ((_ to_fp 11 53) x0_ack!1293)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1287)
                                   ((_ to_fp 11 53) x1_ack!1286))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1286)
                                   ((_ to_fp 11 53) x0_ack!1293))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1286)
                                   ((_ to_fp 11 53) x0_ack!1293))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1291)
                    ((_ to_fp 11 53) x0_ack!1293))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1286)
                    ((_ to_fp 11 53) x0_ack!1293))))))))

(check-sat)
(exit)
