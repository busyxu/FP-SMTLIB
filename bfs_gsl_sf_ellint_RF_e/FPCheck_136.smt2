(declare-fun d_ack!1272 () (_ BitVec 32))
(declare-fun a_ack!1273 () (_ BitVec 64))
(declare-fun b_ack!1270 () (_ BitVec 64))
(declare-fun c_ack!1271 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!1272 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1273) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1271) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1273)
                    ((_ to_fp 11 53) b_ack!1270))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1273)
                    ((_ to_fp 11 53) c_ack!1271))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1270)
                    ((_ to_fp 11 53) c_ack!1271))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1273) ((_ to_fp 11 53) b_ack!1270))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1270) ((_ to_fp 11 53) c_ack!1271))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1271) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   ((_ to_fp 11 53) b_ack!1270))
                           ((_ to_fp 11 53) c_ack!1271))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1273))
                           a!1)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1270))
                           a!1))))
  (fp.gt (fp.abs a!2) (fp.abs a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   ((_ to_fp 11 53) b_ack!1270))
                           ((_ to_fp 11 53) c_ack!1271))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1273))
                           a!1)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!1271))
                           a!1))))
  (fp.gt (fp.abs a!2) (fp.abs a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   ((_ to_fp 11 53) b_ack!1270))
                           ((_ to_fp 11 53) c_ack!1271))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand d_ack!1272 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1273))
                           a!1))))
  (not (fp.lt (fp.abs a!2) a!3)))))
(assert (FPCHECK_FADD_OVERFLOW a_ack!1273 #x00ff0000ff000000))

(check-sat)
(exit)
