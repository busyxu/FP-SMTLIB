(declare-fun a_ack!1039 () (_ BitVec 32))
(declare-fun b_ack!1038 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvslt a_ack!1039 #x00000000))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!1039) #x00000001))))
(assert (not (= #x00000000 a_ack!1039)))
(assert (not (= #xffffffff a_ack!1039)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1038) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1038) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (bvule (bvsub #xffffffff a_ack!1039) #x000000aa)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             (bvsub #xffffffff a_ack!1039))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             (bvsub #xffffffff a_ack!1039))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53)
                  roundNearestTiesToEven
                  (bvsub #xffffffff a_ack!1039))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53)
            roundNearestTiesToEven
            (bvsub #xffffffff a_ack!1039))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
