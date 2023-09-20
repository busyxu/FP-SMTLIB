(declare-fun limit_ack!1484 () (_ BitVec 64))
(declare-fun a_ack!1485 () (_ BitVec 64))
(declare-fun b_ack!1480 () (_ BitVec 64))
(declare-fun epsabs_ack!1482 () (_ BitVec 64))
(declare-fun epsrel_ack!1483 () (_ BitVec 64))
(declare-fun c_ack!1481 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!1484)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1480) ((_ to_fp 11 53) a_ack!1485))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1482) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1483)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1483)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1481) ((_ to_fp 11 53) a_ack!1485))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1481) ((_ to_fp 11 53) b_ack!1480))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1481))
                   ((_ to_fp 11 53) b_ack!1480))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!1485))
                 ((_ to_fp 11 53) a_ack!1485))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1481))
                   ((_ to_fp 11 53) b_ack!1480))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!1485)))
         ((_ to_fp 11 53) a_ack!1485))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1481))
                           ((_ to_fp 11 53) b_ack!1480))
                   ((_ to_fp 11 53) a_ack!1485))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!1480)
                               ((_ to_fp 11 53) a_ack!1485))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))

(check-sat)
(exit)
