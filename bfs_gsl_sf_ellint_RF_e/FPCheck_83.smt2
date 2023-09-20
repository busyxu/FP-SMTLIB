(declare-fun d_ack!784 () (_ BitVec 32))
(declare-fun a_ack!785 () (_ BitVec 64))
(declare-fun b_ack!782 () (_ BitVec 64))
(declare-fun c_ack!783 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!784 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!785) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!782) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!783) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!785)
                    ((_ to_fp 11 53) b_ack!782))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!785)
                    ((_ to_fp 11 53) c_ack!783))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!782)
                    ((_ to_fp 11 53) c_ack!783))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!785) ((_ to_fp 11 53) b_ack!782)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!785) ((_ to_fp 11 53) c_ack!783)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!785) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!785)
                                   ((_ to_fp 11 53) b_ack!782))
                           ((_ to_fp 11 53) c_ack!783))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!785))
                 a!1)
         ((_ to_fp 11 53) a_ack!785))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!785)
                                   ((_ to_fp 11 53) b_ack!782))
                           ((_ to_fp 11 53) c_ack!783))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!785))
                 ((_ to_fp 11 53) a_ack!785))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!785)
                                   ((_ to_fp 11 53) b_ack!782))
                           ((_ to_fp 11 53) c_ack!783))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!782))
                 a!1)
         ((_ to_fp 11 53) b_ack!782))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!785)
                                   ((_ to_fp 11 53) b_ack!782))
                           ((_ to_fp 11 53) c_ack!783))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!782))
                 ((_ to_fp 11 53) b_ack!782))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!785)
                                   ((_ to_fp 11 53) b_ack!782))
                           ((_ to_fp 11 53) c_ack!783))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!782))
    a!1)))

(check-sat)
(exit)
