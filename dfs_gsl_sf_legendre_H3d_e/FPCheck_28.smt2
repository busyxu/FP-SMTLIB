(declare-fun c_ack!181 () (_ BitVec 64))
(declare-fun a_ack!182 () (_ BitVec 32))
(declare-fun b_ack!180 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!181) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!181) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!182))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!181) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!181) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!180) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!180)
                       ((_ to_fp 11 53) c_ack!181)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!180)
                                  ((_ to_fp 11 53) c_ack!181)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) c_ack!181))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) c_ack!181)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!180)
                           ((_ to_fp 11 53) c_ack!181)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!180)
                 ((_ to_fp 11 53) c_ack!181)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!180)
                                  ((_ to_fp 11 53) c_ack!181)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) c_ack!181))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) c_ack!181)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!180)
                           ((_ to_fp 11 53) c_ack!181)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!180)
                 ((_ to_fp 11 53) c_ack!181)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) c_ack!181))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) c_ack!181)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) c_ack!181))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!180)
                                   ((_ to_fp 11 53) c_ack!181)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!180)
          ((_ to_fp 11 53) c_ack!181))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!180)
                  ((_ to_fp 11 53) c_ack!181))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!180)
                  ((_ to_fp 11 53) c_ack!181)))))

(check-sat)
(exit)
