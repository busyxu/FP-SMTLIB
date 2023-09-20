(declare-fun a_ack!1894 () (_ BitVec 32))
(declare-fun b_ack!1892 () (_ BitVec 32))
(declare-fun c_ack!1893 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1894 #x00000000)))
(assert (not (bvslt b_ack!1892 a_ack!1894)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1893) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1894 #x00000000)))
(assert (not (= #x00000000 a_ack!1894)))
(assert (not (= #x00000001 a_ack!1894)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1893) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1893) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!1893))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!1894 a_ack!1894))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1894))
                           ((_ to_fp 11 53) c_ack!1893)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1894))
                   ((_ to_fp 11 53) c_ack!1893))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1894))
                           ((_ to_fp 11 53) c_ack!1893)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1894))
                   ((_ to_fp 11 53) c_ack!1893))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1894))
                   ((_ to_fp 11 53) c_ack!1893))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven a!1 a!1)
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!1893)
                    ((_ to_fp 11 53) c_ack!1893))))))

(check-sat)
(exit)
