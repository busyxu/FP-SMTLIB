(declare-fun e0_ack!345 () (_ BitVec 64))
(declare-fun e1_ack!346 () (_ BitVec 64))
(declare-fun e2_ack!347 () (_ BitVec 64))
(declare-fun x2_ack!344 () (_ BitVec 64))
(declare-fun x1_ack!343 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!345)
                    ((_ to_fp 11 53) e0_ack!345))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!346)
                    ((_ to_fp 11 53) e1_ack!346))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!347)
                    ((_ to_fp 11 53) e2_ack!347))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e1_ack!346)
                                  ((_ to_fp 11 53) e1_ack!346)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e2_ack!347)
                                  ((_ to_fp 11 53) e2_ack!347)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!343)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!344)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x0000000000000000))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!343)
                                   ((_ to_fp 11 53) x1_ack!343))
                           ((_ to_fp 11 53) #x409f400000000000))))
      (a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!344)
                                   ((_ to_fp 11 53) x2_ack!344))
                           ((_ to_fp 11 53) #x409f400000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!1)
            a!2)
    #x0000000000000000)))

(check-sat)
(exit)
