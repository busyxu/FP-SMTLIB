(declare-fun a_ack!2446 () (_ BitVec 32))
(declare-fun b_ack!2444 () (_ BitVec 32))
(declare-fun c_ack!2445 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!2446 #x00000000)))
(assert (not (bvslt b_ack!2444 a_ack!2446)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2446 #x00000000)))
(assert (not (= #x00000000 a_ack!2446)))
(assert (not (= #x00000001 a_ack!2446)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2445) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!2445))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!2446 a_ack!2446))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2446))
                           ((_ to_fp 11 53) c_ack!2445)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2446))
                   ((_ to_fp 11 53) c_ack!2445))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2446))
                           ((_ to_fp 11 53) c_ack!2445)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2446))
                   ((_ to_fp 11 53) c_ack!2445))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2446))
                   ((_ to_fp 11 53) c_ack!2445)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2445)
                           ((_ to_fp 11 53) c_ack!2445)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!2)
                 a!2)
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2446))
                   ((_ to_fp 11 53) c_ack!2445)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2445)
                           ((_ to_fp 11 53) c_ack!2445)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!2))
         a!2)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4022000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!2445)
          ((_ to_fp 11 53) c_ack!2445))))

(check-sat)
(exit)
