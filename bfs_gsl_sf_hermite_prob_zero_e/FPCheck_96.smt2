(declare-fun a_ack!404 () (_ BitVec 32))
(declare-fun b_ack!403 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvsle a_ack!404 #x00000000)))
(assert (not (bvslt b_ack!403 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!404 #x00000002) b_ack!403)))
(assert (not (= #x00000000 b_ack!403)))
(assert (not (= #x00000002 a_ack!404)))
(assert (not (bvslt a_ack!404 #x00000015)))
(assert (= #x00000001 b_ack!403))
(assert (bvslt #x00000032 a_ack!404))
(assert (= #x00000000 (bvand a_ack!404 #x00000001)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!404 #x00000002) b_ack!403)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!404)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.gt (fp.abs a!2) ((_ to_fp 11 53) #x400921fb53c00c10))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!404 #x00000002) b_ack!403)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!404)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW a!2 #xc00921fb53c00c10))))

(check-sat)
(exit)
