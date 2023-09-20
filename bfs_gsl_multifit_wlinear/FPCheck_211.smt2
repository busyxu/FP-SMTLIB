(declare-fun e0_ack!1815 () (_ BitVec 64))
(declare-fun e1_ack!1816 () (_ BitVec 64))
(declare-fun e2_ack!1817 () (_ BitVec 64))
(declare-fun x2_ack!1814 () (_ BitVec 64))
(declare-fun x1_ack!1813 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!1815)
                    ((_ to_fp 11 53) e0_ack!1815))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!1816)
                    ((_ to_fp 11 53) e1_ack!1816))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!1817)
                    ((_ to_fp 11 53) e2_ack!1817))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e1_ack!1816)
                                  ((_ to_fp 11 53) e1_ack!1816)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e2_ack!1817)
                                  ((_ to_fp 11 53) e2_ack!1817)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1813)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1814)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x0000000000000000))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1813)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1814)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!3 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!2
                                     ((_ to_fp 11 53) #x0000000000000000)))))
      (a!4 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!2
                                  ((_ to_fp 11 53) #x0000000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (not (or a!3 a!4)))))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1813)
                                   ((_ to_fp 11 53) x1_ack!1813))
                           ((_ to_fp 11 53) #x409f400000000000)))))
  (FPCHECK_FADD_ACCURACY #x0000000000000000 a!1)))

(check-sat)
(exit)
