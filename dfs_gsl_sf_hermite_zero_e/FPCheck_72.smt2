(declare-fun a_ack!304 () (_ BitVec 32))
(declare-fun b_ack!303 () (_ BitVec 32))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvsle a_ack!304 #x00000000)))
(assert (not (bvslt b_ack!303 #x00000000)))
(assert (not (bvslt (bvsdiv a_ack!304 #x00000002) b_ack!303)))
(assert (not (= #x00000000 b_ack!303)))
(assert (not (= #x00000002 a_ack!304)))
(assert (not (bvslt a_ack!304 #x00000015)))
(assert (= #x00000001 b_ack!303))
(assert (bvslt #x00000032 a_ack!304))
(assert (not (= #x00000000 (bvand a_ack!304 #x00000001))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.gt (fp.abs a!2) ((_ to_fp 11 53) #x400827f917c78e86)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.gt (fp.sub roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #xc00827f917c78e86))
              ((_ to_fp 11 53) #x3e70000000000000))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.lt (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #xc00827f917c78e86))
         ((_ to_fp 11 53) #xbe70000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #xbcb0000000000000))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.gt ((_ to_fp 11 53) #xc00827f917c78e86) a!2))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.gt (fp.div roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc00827f917c78e86)
                         a!2)
                 ((_ to_fp 11 53) #x4010000000000000))
         ((_ to_fp 11 53) #x3e50000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00827f917c78e86)
                                   a!2)
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8a4f044ba5706)
                                   a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8a4f044ba5706)
                                   a!3)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8a4f044ba5706)
                                   a!3)))))
  (fp.eq a!6 a!4))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00827f917c78e86)
                                   a!2)
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8a4f044ba5706)
                                   a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8a4f044ba5706)
                                   a!3)))))
  (fp.eq (fp.sub roundNearestTiesToEven a!4 a!5)
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff8a4f044ba5706)
                         a!3)))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00827f917c78e86)
                                   a!2)
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8a4f044ba5706)
                                   a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8a4f044ba5706)
                                   a!3)))))
  (not (fp.gt a!5 a!2))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvmul #xfffffffe (bvsub (bvsdiv a_ack!304 #x00000002) b_ack!303)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00827f917c78e86)
                                   a!2)
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff8a4f044ba5706) a!3))))))

(check-sat)
(exit)
