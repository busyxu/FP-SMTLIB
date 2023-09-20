(declare-fun b_ack!4269 () (_ BitVec 64))
(declare-fun a_ack!4270 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_cosh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4269) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4269) ((_ to_fp 11 53) #x4000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4270) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4269) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4269) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269))))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) b_ack!4269)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 ((_ to_fp 11 53) b_ack!4269)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) b_ack!4269)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 ((_ to_fp 11 53) b_ack!4269)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4270)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1)))))
  (fp.eq a!2 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) a_ack!4270) a!1)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!43 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   a!2))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!4) a!4)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!8)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!22)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!23)
                            a!22)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!31)
                            a!30)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!19)
                                    a!18)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!33)
                            a!32)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!34)
                                    a!33)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!19)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!4)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!19)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38)))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!3 a!36))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)))
      (a!44 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41))))
(let ((a!45 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff0000000000000)
                                    (fp.div roundNearestTiesToEven a!42 a!43))
                            a!44)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff0000000000000)
                            (fp.div roundNearestTiesToEven a!42 a!43)))))
  (fp.eq a!45 a!44))))))))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!43 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   a!2))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!4) a!4)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!8)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!22)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!23)
                            a!22)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!31)
                            a!30)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!19)
                                    a!18)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!33)
                            a!32)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!34)
                                    a!33)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!19)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!4)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!19)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38)))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!3 a!36))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)))
      (a!44 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41))))
(let ((a!45 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff0000000000000)
                                    (fp.div roundNearestTiesToEven a!42 a!43))
                            a!44)
                    a!44)))
  (fp.eq a!45
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbff0000000000000)
                 (fp.div roundNearestTiesToEven a!42 a!43))))))))))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!35 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4270)
                           a!1)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!36 (CF_sin (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x400921fb54442d18)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!37 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x400921fb54442d18)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))
                    a!36))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!38) a!38)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbf633dbd22def21)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbe598c5460217e6))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc467c1053694f01)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!20)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc83712dd7fd5dae))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!7)
                           a!6)
                   ((_ to_fp 11 53) #xbc944da74212ed24)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!21)
                            a!20)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!8)
                           a!7)
                   ((_ to_fp 11 53) #xbcd51f6fd990ebc7)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!22)
                            a!21)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!9)
                            a!8)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!23)
                            a!22)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!24)
                            a!23)
                    ((_ to_fp 11 53) #x3dc1d4922a661984))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!11)
                            a!10)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!12)
                            a!11)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!26)
                            a!25)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!13)
                            a!12)
                    ((_ to_fp 11 53) #xbe77df090b838554)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!28)
                            a!27)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!15)
                            a!14)
                    ((_ to_fp 11 53) #x3f13fba52e885960)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!29)
                            a!28)
                    ((_ to_fp 11 53) #x3f24083a360db22f))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!30)
                            a!29)
                    ((_ to_fp 11 53) #x3f5e83b08852701d))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!17)
                            a!16)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d)))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!31)
                                    a!30)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf)))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!18)
                                    a!17)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!32 a!31)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!34 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!19 a!18)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!33)))
      (a!40 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!38)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!32 a!31)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!39
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!19 a!18)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!42 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!19 a!18)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!33))))
(let ((a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!37 a!40))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!2))
                            a!34)))
      (a!45 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!2))
                            a!34)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    a!41
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!2))
                            a!42))))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!35)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff0000000000000)
                                    (fp.div roundNearestTiesToEven a!43 a!44))
                            a!45))))
(let ((a!47 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!2))
                            a!34)
                    a!46)))
(let ((a!48 (fp.sub roundNearestTiesToEven
                    a!47
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!2))
                            a!34))))
  (fp.eq a!48 a!46))))))))))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!35 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4270)
                           a!1)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!36 (CF_sin (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x400921fb54442d18)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!37 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x400921fb54442d18)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))
                    a!36))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!38) a!38)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbf633dbd22def21)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbe598c5460217e6))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc467c1053694f01)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!20)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc83712dd7fd5dae))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!7)
                           a!6)
                   ((_ to_fp 11 53) #xbc944da74212ed24)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!21)
                            a!20)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!8)
                           a!7)
                   ((_ to_fp 11 53) #xbcd51f6fd990ebc7)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!22)
                            a!21)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!9)
                            a!8)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!23)
                            a!22)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!24)
                            a!23)
                    ((_ to_fp 11 53) #x3dc1d4922a661984))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!11)
                            a!10)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!12)
                            a!11)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!26)
                            a!25)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!13)
                            a!12)
                    ((_ to_fp 11 53) #xbe77df090b838554)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!28)
                            a!27)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!15)
                            a!14)
                    ((_ to_fp 11 53) #x3f13fba52e885960)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!29)
                            a!28)
                    ((_ to_fp 11 53) #x3f24083a360db22f))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!30)
                            a!29)
                    ((_ to_fp 11 53) #x3f5e83b08852701d))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!5 a!17)
                            a!16)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d)))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!31)
                                    a!30)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf)))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!18)
                                    a!17)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!32 a!31)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!34 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!19 a!18)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!33)))
      (a!40 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!38)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!32 a!31)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!39
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!19 a!18)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!42 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!19 a!18)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!33))))
(let ((a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!37 a!40))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!2))
                            a!34)))
      (a!45 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!2))
                            a!34)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    a!41
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!2))
                            a!42))))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!35)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff0000000000000)
                                    (fp.div roundNearestTiesToEven a!43 a!44))
                            a!45))))
(let ((a!47 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!2))
                            a!34)
                    a!46)))
  (fp.eq (fp.sub roundNearestTiesToEven a!47 a!46)
         (fp.mul roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe0000000000000)
                         (CF_exp a!2))
                 a!34))))))))))))))))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!2))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!2))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!2))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!2)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!2)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!2)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!2))
                   a!3))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!5) a!5)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!9)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!23)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!10)
                            a!9)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!25)
                            a!24)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!27)
                            a!26)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!14)
                            a!13)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!16)
                            a!15)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!31)
                            a!30)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!19)
                            a!18)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!33)
                            a!32)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!20)
                                    a!19)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!34)
                            a!33)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!36 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!35)
                                    a!34)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!21 a!20)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!37 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!5)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!21 a!20)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!22
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!36 a!35)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!40 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!36 a!35)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!39)))
      (a!42 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!36 a!35)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!39))))
(let ((a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!4 a!37))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!38))
                            a!40))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    a!41
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!38))
                            a!42))))
(let ((a!45 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!1)
                    (fp.div roundNearestTiesToEven a!43 a!44))))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!37)
                                    a!45)))))
  (not (fp.lt (fp.abs a!45)
              (fp.mul roundNearestTiesToEven
                      a!46
                      ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!43 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   a!2))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!4) a!4)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!8)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!22)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!23)
                            a!22)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!31)
                            a!30)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!19)
                                    a!18)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!33)
                            a!32)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!34)
                                    a!33)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!19)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!4)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!19)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38)))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!3 a!36))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)))
      (a!44 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))))
      (a!46 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41))))
(let ((a!45 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven a!42 a!43))
                    a!44)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!45 a!46)
                 a!45)
         a!46))))))))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!43 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   a!2))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!4) a!4)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!8)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!22)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!23)
                            a!22)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!31)
                            a!30)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!19)
                                    a!18)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!33)
                            a!32)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!34)
                                    a!33)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!19)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!4)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!19)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38)))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!3 a!36))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)))
      (a!44 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))))
      (a!46 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41))))
(let ((a!45 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven a!42 a!43))
                    a!44)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!45 a!46)
                 a!46)
         a!45))))))))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4270)
                           a!1)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4270)
                           a!1))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4010000000000000)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x4010000000000000)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4270)
                           a!1)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4270)
                           a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4010000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4010000000000000)
                         a!2))
         a!2))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!43 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   a!2))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!4) a!4)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!8)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!22)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!23)
                            a!22)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!31)
                            a!30)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!19)
                                    a!18)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!33)
                            a!32)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!34)
                                    a!33)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!19)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!4)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!19)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38)))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!3 a!36))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)))
      (a!45 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))))
      (a!46 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41)))
      (a!48 (fp.div roundNearestTiesToEven
                    a!45
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!44 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.div roundNearestTiesToEven
                            a!42
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!43)))))
(let ((a!47 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!44 a!45)
                                    a!46)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!43)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!47 a!48)
                 a!47)
         a!48)))))))))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!43 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   a!2))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!4) a!4)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!8)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!22)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!23)
                            a!22)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!31)
                            a!30)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!19)
                                    a!18)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!33)
                            a!32)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!34)
                                    a!33)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!19)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!4)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!19)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38)))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!3 a!36))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)))
      (a!45 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))))
      (a!46 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41)))
      (a!48 (fp.div roundNearestTiesToEven
                    a!45
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!44 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.div roundNearestTiesToEven
                            a!42
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!43)))))
(let ((a!47 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!44 a!45)
                                    a!46)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!43)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!47 a!48)
                 a!48)
         a!47)))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!45 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))
                   a!4))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!6) a!6)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!24)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!11)
                            a!10)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!25)
                            a!24)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!26)
                            a!25)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!27)
                            a!26)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!14)
                            a!13)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!28)
                            a!27)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!15)
                            a!14)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!16)
                            a!15)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!17)
                            a!16)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!31)
                            a!30)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!32)
                            a!31)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!19)
                            a!18)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!33)
                            a!32)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!20)
                            a!19)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!34)
                            a!33)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!21)
                                    a!20)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!35)
                            a!34)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!37 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!36)
                                    a!35)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!40 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!22 a!21)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!38 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!6)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!22 a!21)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!37 a!36)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!37 a!36)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!40)))
      (a!43 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!37 a!36)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!40))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!5 a!38))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!41)))
      (a!47 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!41)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!3))))
      (a!48 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!43)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!3)))))
(let ((a!44 (fp.add roundNearestTiesToEven
                    a!42
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!43))))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.div roundNearestTiesToEven
                            a!44
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!45)))))
(let ((a!49 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!46 a!47)
                            a!48)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            a!45))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!49)
                 a!2)
         a!49)))))))))))))))))))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!43 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!1))
                   a!2))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!4) a!4)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!8)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!22)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!23)
                            a!22)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!24)
                            a!23)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!25)
                            a!24)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!26)
                            a!25)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!27)
                            a!26)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!28)
                            a!27)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!31)
                            a!30)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!32)
                            a!31)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!19)
                                    a!18)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!33)
                            a!32)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!34)
                                    a!33)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!19)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!4)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!19)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!39 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38)))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!34)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!38))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!3 a!36))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)))
      (a!45 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!39)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1))))
      (a!46 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!1)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!37))
                            a!41))))
(let ((a!44 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.div roundNearestTiesToEven
                            a!42
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!43)))))
(let ((a!47 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!44 a!45)
                                    a!46)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!43)))))
  (not (fp.eq a!47 ((_ to_fp 11 53) #x0000000000000000)))))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!45 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))
                   a!4))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!6) a!6)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!24)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!11)
                            a!10)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!25)
                            a!24)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!26)
                            a!25)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!27)
                            a!26)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!14)
                            a!13)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!28)
                            a!27)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!15)
                            a!14)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!16)
                            a!15)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!17)
                            a!16)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!31)
                            a!30)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!32)
                            a!31)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!19)
                            a!18)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!33)
                            a!32)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!20)
                            a!19)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!34)
                            a!33)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!21)
                                    a!20)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!35)
                            a!34)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!37 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!36)
                                    a!35)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!40 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!22 a!21)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!38 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!6)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!22 a!21)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!37 a!36)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!37 a!36)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!40)))
      (a!43 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!37 a!36)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!40))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!5 a!38))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!41)))
      (a!47 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!41)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!3))))
      (a!48 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!43)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!3)))))
(let ((a!44 (fp.add roundNearestTiesToEven
                    a!42
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!43))))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.div roundNearestTiesToEven
                            a!44
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!45)))))
(let ((a!49 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!46 a!47)
                            a!48)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            a!45))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!49)
                 a!49)
         a!2)))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) b_ack!4269))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4270)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!4269)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269)))))
      (a!45 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4270)
                                   a!3))
                   a!4))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (CF_sinh a!6) a!6)
                    (CF_log (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!4269))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbe598c5460217e6)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbbf633dbd22def21))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc83712dd7fd5dae)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!24)
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #xbc467c1053694f01))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!11)
                            a!10)
                    ((_ to_fp 11 53) #xbcccc7fd6547eebe)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!25)
                            a!24)
                    ((_ to_fp 11 53) #xbc944da74212ed24))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3d1fec573c54f7e4)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!26)
                            a!25)
                    ((_ to_fp 11 53) #xbcd51f6fd990ebc7))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!13)
                            a!12)
                    ((_ to_fp 11 53) #x3d6808c44f2106c2)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!27)
                            a!26)
                    ((_ to_fp 11 53) #x3d4fe3990ccf9916))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!14)
                            a!13)
                    ((_ to_fp 11 53) #x3dc1d4922a661984)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!28)
                            a!27)
                    ((_ to_fp 11 53) #x3d949dabbf046c8f))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!15)
                            a!14)
                    ((_ to_fp 11 53) #x3dff0dbfd1b8b9c7)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!29)
                            a!28)
                    ((_ to_fp 11 53) #xbdd9d6e073fdd7cb))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!16)
                            a!15)
                    ((_ to_fp 11 53) #xbe6bd210d42ea355)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!30)
                            a!29)
                    ((_ to_fp 11 53) #xbe20c4c973386ffa))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!17)
                            a!16)
                    ((_ to_fp 11 53) #xbea5ace21c9e49d4)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!31)
                            a!30)
                    ((_ to_fp 11 53) #xbe77df090b838554))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3ef1d81738e657ad)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!32)
                            a!31)
                    ((_ to_fp 11 53) #xbeb005c3b83b8ea6))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!19)
                            a!18)
                    ((_ to_fp 11 53) #x3f24083a360db22f)))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!33)
                            a!32)
                    ((_ to_fp 11 53) #x3f13fba52e885960))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!20)
                            a!19)
                    ((_ to_fp 11 53) #x3f5e83b08852701d)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!34)
                            a!33)
                    ((_ to_fp 11 53) #x3f44c4b99f9a8a1e))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!21)
                                    a!20)
                            ((_ to_fp 11 53) #x3f7a0dd6818d61bf))))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!35)
                            a!34)
                    ((_ to_fp 11 53) #xbf92b1e364ce7f7d))))
(let ((a!37 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!36)
                                    a!35)
                            ((_ to_fp 11 53) #xbfb3d66d838e9aa7))))
      (a!40 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!4270)
                            a!3)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!22 a!21)
                            ((_ to_fp 11 53) #xbfe2529792fe2917)))))
(let ((a!38 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_cosh a!6)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!22 a!21)
                                    ((_ to_fp 11 53) #xbfe2529792fe2917)))
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!37 a!36)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da)))))
      (a!41 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!37 a!36)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!40)))
      (a!43 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!37 a!36)
                                    ((_ to_fp 11 53) #x3fee1f50e9f9e9da))
                            a!40))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!5 a!38))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!41)))
      (a!47 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!41)
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!3))))
      (a!48 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!43)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!3)))))
(let ((a!44 (fp.add roundNearestTiesToEven
                    a!42
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_exp a!39))
                            a!43)))
      (a!50 (fp.div roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!4270)
                                    a!3)))))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.div roundNearestTiesToEven
                            a!44
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!45)))))
(let ((a!49 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!46 a!47)
                                    a!48)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!45)))))
  (FPCHECK_FMUL_OVERFLOW a!2 (fp.add roundNearestTiesToEven a!49 a!50))))))))))))))))))))))))))

(check-sat)
(exit)
