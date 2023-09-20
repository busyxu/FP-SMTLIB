(declare-fun e0_ack!1365 () (_ BitVec 64))
(declare-fun e1_ack!1366 () (_ BitVec 64))
(declare-fun e2_ack!1367 () (_ BitVec 64))
(declare-fun x2_ack!1364 () (_ BitVec 64))
(declare-fun x1_ack!1363 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!1365)
                    ((_ to_fp 11 53) e0_ack!1365))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!1366)
                    ((_ to_fp 11 53) e1_ack!1366))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!1367)
                    ((_ to_fp 11 53) e2_ack!1367))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e1_ack!1366)
                                  ((_ to_fp 11 53) e1_ack!1366)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e2_ack!1367)
                                  ((_ to_fp 11 53) e2_ack!1367)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1363)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1364)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x0000000000000000))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1363)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1364)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!3 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!2
                                     ((_ to_fp 11 53) #x0000000000000000)))))
      (a!4 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!2
                                  ((_ to_fp 11 53) #x0000000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!3 a!4))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1363)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1364)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
  (fp.gt (fp.add roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x0000000000000000))
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1363)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1364)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!3 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  a!2
                                  ((_ to_fp 11 53) #x0000000000000000))
                          ((_ to_fp 11 53) #x4000000000000000))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1363)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1364)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!3 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  a!2
                                  ((_ to_fp 11 53) #x0000000000000000))
                          ((_ to_fp 11 53) #x4000000000000000))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!3)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1364)
          ((_ to_fp 11 53) #x409f400000000000))
  #x3fe0000000000000))

(check-sat)
(exit)
