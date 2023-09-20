(declare-fun d_ack!224 () (_ BitVec 32))
(declare-fun a_ack!225 () (_ BitVec 64))
(declare-fun b_ack!222 () (_ BitVec 64))
(declare-fun c_ack!223 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!224 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!222) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!223) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!225)
                    ((_ to_fp 11 53) b_ack!222))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!225)
                    ((_ to_fp 11 53) c_ack!223))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!222)
                    ((_ to_fp 11 53) c_ack!223))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!225) ((_ to_fp 11 53) b_ack!222)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!225) ((_ to_fp 11 53) c_ack!223)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!225) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!225)
                                   ((_ to_fp 11 53) b_ack!222))
                           ((_ to_fp 11 53) c_ack!223))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!225))
                 a!1)
         ((_ to_fp 11 53) a_ack!225))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!225)
                                   ((_ to_fp 11 53) b_ack!222))
                           ((_ to_fp 11 53) c_ack!223))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!225))
                 ((_ to_fp 11 53) a_ack!225))
         a!1)))

(check-sat)
(exit)
