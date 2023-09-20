(declare-fun a_ack!268 () (_ BitVec 32))
(declare-fun b_ack!267 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvsle a_ack!268 #x00000000)))
(assert (not (bvslt b_ack!267 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!268 #x00000002) b_ack!267)))
(assert (not (= #x00000000 b_ack!267)))
(assert (not (= #x00000002 a_ack!268)))
(assert (not (bvslt a_ack!268 #x00000015)))
(assert (= #x00000001 b_ack!267))
(assert (bvslt #x00000032 a_ack!268))
(assert (not (= #x00000000 (bvand a_ack!268 #x00000001))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!268 #x00000002) b_ack!267)))))
  (FPCHECK_FDIV_INVALID
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x400921fb54442d18)
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff8000000000000)))
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!268)
            ((_ to_fp 11 53) #x3fe0000000000000)))))

(check-sat)
(exit)
