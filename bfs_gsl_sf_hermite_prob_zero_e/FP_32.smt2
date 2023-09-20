(declare-fun a_ack!626 () (_ BitVec 32))
(declare-fun b_ack!625 () (_ BitVec 32))
(assert (not (bvsle a_ack!626 #x00000000)))
(assert (not (bvslt b_ack!625 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!626 #x00000002) b_ack!625)))
(assert (not (= #x00000000 b_ack!625)))
(assert (not (= #x00000002 a_ack!626)))
(assert (not (bvslt a_ack!626 #x00000015)))
(assert (= #x00000001 b_ack!625))
(assert (bvslt #x00000032 a_ack!626))
(assert (not (= #x00000000 (bvand a_ack!626 #x00000001))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!626 #x00000002) b_ack!625)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!626)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.gt (fp.abs a!2) ((_ to_fp 11 53) #x400827f917c78e86))))))

(check-sat)
(exit)
