(declare-fun x1_ack!1318 () (_ BitVec 64))
(declare-fun x0_ack!1325 () (_ BitVec 64))
(declare-fun x2_ack!1319 () (_ BitVec 64))
(declare-fun b_ack!1324 () (_ BitVec 64))
(declare-fun a_ack!1323 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1320 () (_ BitVec 64))
(declare-fun y1_ack!1321 () (_ BitVec 64))
(declare-fun y2_ack!1322 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1325) ((_ to_fp 11 53) x1_ack!1318)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1318) ((_ to_fp 11 53) x2_ack!1319)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1318)
                       ((_ to_fp 11 53) x0_ack!1325))
               ((_ to_fp 11 53) x0_ack!1325))
       ((_ to_fp 11 53) x1_ack!1318)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1318)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1318)
                       ((_ to_fp 11 53) x0_ack!1325)))
       ((_ to_fp 11 53) x0_ack!1325)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1319)
                       ((_ to_fp 11 53) x1_ack!1318))
               ((_ to_fp 11 53) x1_ack!1318))
       ((_ to_fp 11 53) x2_ack!1319)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1319)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1319)
                       ((_ to_fp 11 53) x1_ack!1318)))
       ((_ to_fp 11 53) x1_ack!1318)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1318)
                    ((_ to_fp 11 53) x0_ack!1325))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1319)
                    ((_ to_fp 11 53) x1_ack!1318))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1323) ((_ to_fp 11 53) b_ack!1324))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1323) ((_ to_fp 11 53) x0_ack!1325))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1324) ((_ to_fp 11 53) x2_ack!1319))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1323) ((_ to_fp 11 53) b_ack!1324))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1323) ((_ to_fp 11 53) x0_ack!1325))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1323) ((_ to_fp 11 53) x1_ack!1318))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1324) ((_ to_fp 11 53) x0_ack!1325))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1324) ((_ to_fp 11 53) x1_ack!1318)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1318) ((_ to_fp 11 53) b_ack!1324))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1318)
                    ((_ to_fp 11 53) x0_ack!1325))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1322)
                           ((_ to_fp 11 53) y1_ack!1321))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1319)
                                   ((_ to_fp 11 53) x1_ack!1318)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1321)
                           ((_ to_fp 11 53) y0_ack!1320))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1318)
                                   ((_ to_fp 11 53) x0_ack!1325)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1319)
                                   ((_ to_fp 11 53) x1_ack!1318))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1318)
                                   ((_ to_fp 11 53) x0_ack!1325))))))
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
                                   ((_ to_fp 11 53) x1_ack!1318)
                                   ((_ to_fp 11 53) x0_ack!1325))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1323)
                    ((_ to_fp 11 53) x0_ack!1325))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1318)
                    ((_ to_fp 11 53) x0_ack!1325))))))))

(check-sat)
(exit)
