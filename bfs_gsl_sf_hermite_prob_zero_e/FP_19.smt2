(declare-fun a_ack!456 () (_ BitVec 32))
(declare-fun b_ack!455 () (_ BitVec 32))
(assert (not (bvsle a_ack!456 #x00000000)))
(assert (not (bvslt b_ack!455 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!456 #x00000002) b_ack!455)))
(assert (not (= #x00000000 b_ack!455)))
(assert (not (= #x00000002 a_ack!456)))
(assert (not (bvslt a_ack!456 #x00000015)))
(assert (= #x00000001 b_ack!455))
(assert (bvslt #x00000032 a_ack!456))
(assert (= #x00000000 (bvand a_ack!456 #x00000001)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!456 #x00000002) b_ack!455)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!456)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.gt (fp.abs a!2) ((_ to_fp 11 53) #x400921fb53c00c10)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!456 #x00000002) b_ack!455)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!456)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.gt (fp.sub roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #xc00921fb53c00c10))
              ((_ to_fp 11 53) #x3e70000000000000))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!456 #x00000002) b_ack!455)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!456)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.sub roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #xc00921fb53c00c10))
              ((_ to_fp 11 53) #xbe70000000000000))))))
(assert (not (bvslt #x00000001 a_ack!456)))

(check-sat)
(exit)
