(declare-fun c_ack!722 () (_ BitVec 32))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!723 () (_ BitVec 64))
(declare-fun b_ack!721 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun const_arr10 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!722 #x00000007)))
       #x0000000000000011))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
  (not (fp.lt (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      (fp.mul roundNearestTiesToEven a!2 a!2))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!721)
                                   ((_ to_fp 11 53) b_ack!721))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (not (fp.lt a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!721)
                                   ((_ to_fp 11 53) b_ack!721))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  (fp.mul roundNearestTiesToEven a!2 a!2))
                          a!3)
                  ((_ to_fp 11 53) #x0034000000000000))))
  (not a!4))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  (fp.mul roundNearestTiesToEven a!2 a!2))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0034000000000000))))
  (not a!3)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!721)
                                   ((_ to_fp 11 53) b_ack!721))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!3
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0034000000000000)))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!721)
                                   ((_ to_fp 11 53) b_ack!721))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (not (fp.gt (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      (fp.mul roundNearestTiesToEven a!2 a!2))
              a!3))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!721)
                                   ((_ to_fp 11 53) b_ack!721))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (not (fp.gt a!3 ((_ to_fp 11 53) #x3ff0000000000000)))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!721)
                                   ((_ to_fp 11 53) b_ack!721))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2)))
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!3)
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  a!5))
                  (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  a!6)))))
  (not a!7))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!721)
                                   ((_ to_fp 11 53) b_ack!721))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!3)
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  a!5))
                  (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  a!6)))))
  (not a!7))))))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!6 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand c_ack!722 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!721)
                                   ((_ to_fp 11 53) b_ack!721))
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4000000000000000)
                         a!5))
         a!6)))))))
(assert (let ((a!1 ((_ extract 31 0)
             (bvmul #x0000000000000008
                    (concat #x00000000 (bvand c_ack!722 #x00000007)))))
      (a!5 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!723)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (concat (select const_arr10 (bvadd #x00000002 a!1))
                   (concat (select const_arr10 (bvadd #x00000001 a!1))
                           (select const_arr10 a!1))))
      (a!6 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!723)
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
(let ((a!3 (concat (select const_arr10 (bvadd #x00000004 a!1))
                   (concat (select const_arr10 (bvadd #x00000003 a!1)) a!2)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!721)
                                   ((_ to_fp 11 53) b_ack!721))
                           (fp.mul roundNearestTiesToEven a!6 a!6)))))
(let ((a!4 (concat (select const_arr10 (bvadd #x00000006 a!1))
                   (concat (select const_arr10 (bvadd #x00000005 a!1)) a!3)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!6 a!6))
                           a!7)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!6 a!6)))
                   (fp.div roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4008000000000000))
                            a!7)
                    (fp.div roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x4008000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4008000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.div roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!9)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!12)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!12))))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb1745d1745d174)
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!12))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb2492492492492)
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!12)))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa5555555555555)
                                    a!13)
                            ((_ to_fp 11 53) #x3fb999999999999a))
                    a!14)))
(let ((a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!15 a!13))
                            a!16)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (concat (select const_arr10 (bvadd #x00000007 a!1)) a!4)
    (fp.abs a!17))))))))))))
(assert (= (select const_arr10 #x00000000) #x00))
(assert (= (select const_arr10 #x00000001) #x00))
(assert (= (select const_arr10 #x00000002) #x00))
(assert (= (select const_arr10 #x00000003) #x00))
(assert (= (select const_arr10 #x00000004) #x00))
(assert (= (select const_arr10 #x00000005) #x00))
(assert (= (select const_arr10 #x00000006) #xb0))
(assert (= (select const_arr10 #x00000007) #x3c))
(assert (= (select const_arr10 #x00000008) #x00))
(assert (= (select const_arr10 #x00000009) #x00))
(assert (= (select const_arr10 #x0000000a) #x00))
(assert (= (select const_arr10 #x0000000b) #x00))
(assert (= (select const_arr10 #x0000000c) #x00))
(assert (= (select const_arr10 #x0000000d) #x00))
(assert (= (select const_arr10 #x0000000e) #x80))
(assert (= (select const_arr10 #x0000000f) #x3e))
(assert (= (select const_arr10 #x00000010) #x00))
(assert (= (select const_arr10 #x00000011) #x00))
(assert (= (select const_arr10 #x00000012) #x00))
(assert (= (select const_arr10 #x00000013) #x00))
(assert (= (select const_arr10 #x00000014) #x00))
(assert (= (select const_arr10 #x00000015) #x00))
(assert (= (select const_arr10 #x00000016) #x40))
(assert (= (select const_arr10 #x00000017) #x3f))

(check-sat)
(exit)
